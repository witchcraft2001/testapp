// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_file_plus/open_file_plus.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/profile_documents/domain/cubits/profile_documents_cubit.dart';
import 'package:terralinkapp/presentation/screens/profile_documents/domain/states/profile_documents_screen_state.dart';
import 'package:terralinkapp/presentation/screens/profile_documents/domain/states/profile_documents_state.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_svg_icon_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/presentation/widgets/search_field.dart';
import 'package:terralinkapp/presentation/widgets/tl_divider.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';

part 'widgets/content.dart';
part 'widgets/content_bottom_buttons.dart';
part 'widgets/content_card.dart';
part 'widgets/content_toolbar.dart';

class ProfileDocumentsScreen extends StatelessWidget {
  const ProfileDocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileDocumentsCubit>(
      create: (_) => getIt<ProfileDocumentsCubit>()
        ..init()
        ..get(),
      child: const _DocumentsScreen(),
    );
  }
}

class _DocumentsScreen extends StatefulWidget {
  const _DocumentsScreen();

  @override
  State<_DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<_DocumentsScreen> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: SearchField(
          hint: S.current.searchDocuments,
          text: searchQuery,
          onChanged: _handleSearch,
          padding: TlSpaces.pr24,
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<ProfileDocumentsCubit, ProfileDocumentsScreenState>(
          builder: (_, state) => state.when(
            loading: () => const CenteredProgressIndicator(),
            loaded: (data) => data.documents.isEmpty
                ? _ContentEmpty(
                    message: searchQuery.isEmpty ? null : S.current.searchDocumentsNoResults,
                  )
                : _ContentData(data: data),
          ),
        ),
      ),
    );
  }

  void _handleSearch(String query) {
    setState(() => searchQuery = query);

    context.bloc<ProfileDocumentsCubit>().get(query);
  }
}
