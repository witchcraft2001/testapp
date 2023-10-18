// part of '../tasks_sbs_screen.dart';

// class _TaskCardEmployee extends StatefulWidget {
//   final AppTaskSBSConsultantRecord record;

//   const _TaskCardEmployee({
//     required this.record,
//   });

//   @override
//   State<_TaskCardEmployee> createState() => _TaskCardEmployeeState();
// }

// class _TaskCardEmployeeState extends State<_TaskCardEmployee> {
//   bool _isShowMore = false;

//   @override
//   Widget build(BuildContext context) {
//     final theme = context.appTheme?.appTheme;

//     return Column(
//       children: [
//         TlCard(
//           elevation: 0,
//           borderRadius: BorderRadius.zero,
//           margin: _isShowMore ? const EdgeInsets.only(bottom: 1.0) : TlSpaces.pb4,
//           child: ListTile(
//             minLeadingWidth: 24,
//             contentPadding: TlSpaces.ph24v8,
//             onTap: () => setState(() => _isShowMore = !_isShowMore),
//             leading: TlSvg(
//               assetName: _isShowMore ? TlAssets.iconArrowDown : TlAssets.iconArrowRight,
//               size: TlSizes.iconSizeS,
//               color: _isShowMore ? theme?.primary : theme?.textSignatures,
//             ),
//             title: Text(
//               widget.record.name,
//               style: appFontMedium(16, theme?.textSignatures),
//             ),
//             trailing: Container(
//               padding: TlSpaces.ph12,
//               decoration: BoxDecoration(
//                 // ToDo 57 цвет должен меняться на основе принятых решений
//                 border: Border(
//                   right: BorderSide(width: 2.0, color: theme!.predictors7),
//                 ),
//               ),
//               child: Text(
//                 widget.record.totalHours,
//                 style: appFontSemi(20, theme.textSignatures),
//               ),
//             ),
//           ),
//         ),
//         if (_isShowMore)
//           ListView.builder(
//             primary: false,
//             shrinkWrap: true,
//             itemCount: widget.record.registerRecords.length,
//             itemBuilder: (_, index) => _TaskCardEmployeeRecord(
//               record: widget.record.registerRecords[index],
//               isLast: index == widget.record.registerRecords.length - 1,
//             ),
//           ),
//       ],
//     );
//   }
// }

part of '../tasks_sbs_screen.dart';

class _TaskCardEmployee extends StatefulWidget {
  final AppTaskSBSConsultantRecord record;

  const _TaskCardEmployee({
    required this.record,
  });

  @override
  State<_TaskCardEmployee> createState() => _TaskCardEmployeeState();
}

class _TaskCardEmployeeState extends State<_TaskCardEmployee> {
  bool _isShowMore = false;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return Column(
      children: [
        // Container(
        //   margin: _isShowMore ? const EdgeInsets.only(bottom: 1.0) : TlSpaces.pb4,
        //   child: Ink(
        //     color: context.appTheme?.appTheme.specialColorMenu,
        //     child: InkWell(
        //       onTap: () => setState(() => _isShowMore = !_isShowMore),
        //       child: Padding(
        //         padding: TlSpaces.ph24v20,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Flexible(
        //               child: Row(
        //                 children: [
        //                   TlSvg(
        //                     assetName:
        //                         _isShowMore ? TlAssets.iconArrowDown : TlAssets.iconArrowRight,
        //                     size: TlSizes.iconSizeS,
        //                     color: _isShowMore ? theme?.primary : theme?.textSignatures,
        //                     backgroundSize: TlSizes.iconSizeS,
        //                   ),
        //                   Flexible(
        //                     child: Padding(
        //                       padding: TlSpaces.pl16,
        //                       child: Text(
        //                         // widget.record.name,
        //                         'sd hfkshdkfhskldhf kjsdhk fhskjd hfkjskdfdf sdkhfksdhfk jhsdkjf hskdfh kjshdfkh skdhf k shdfkjh skjdfhk shdfkjhs kfjdhsdkjhfk hsdkjf',
        //                         style: appFontMedium(16, theme?.textSignatures),
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               padding: TlSpaces.ph12,
        //               decoration: BoxDecoration(
        //                 // ToDo 57 цвет должен меняться на основе принятых решений
        //                 border: Border(
        //                   right: BorderSide(width: 2.0, color: theme!.predictors7),
        //                 ),
        //               ),
        //               child: Text(
        //                 widget.record.totalHours,
        //                 style: appFontSemi(20, theme.textSignatures),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        TlCard(
          elevation: 0,
          borderRadius: BorderRadius.zero,
          margin: _isShowMore ? const EdgeInsets.only(bottom: 1.0) : TlSpaces.pb4,
          child: ListTile(
            horizontalTitleGap: TlSpaces.sp12,
            minLeadingWidth: TlSizes.iconSizeBase,
            contentPadding: TlSpaces.ph24v8,
            onTap: () => setState(() => _isShowMore = !_isShowMore),
            leading: TlSvg(
              assetName: _isShowMore ? TlAssets.iconArrowDown : TlAssets.iconArrowRight,
              size: TlSizes.iconSizeS,
              color: _isShowMore ? theme?.primary : theme?.textSignatures,
            ),
            title: Text(
              widget.record.name,
              style: appFontMedium(16, theme?.textSignatures),
            ),
            trailing: Container(
              padding: TlSpaces.ph12,
              decoration: BoxDecoration(
                // ToDo 57 цвет должен меняться на основе принятых решений
                border: Border(
                  right: BorderSide(width: 2.0, color: theme!.predictors7),
                ),
              ),
              child: Text(
                widget.record.totalHours,
                style: appFontSemi(20, theme.textSignatures),
              ),
            ),
          ),
        ),
        if (_isShowMore)
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: widget.record.registerRecords.length,
            itemBuilder: (_, index) => _TaskCardEmployeeRecord(
              record: widget.record.registerRecords[index],
              isLast: index == widget.record.registerRecords.length - 1,
            ),
          ),
      ],
    );
  }
}
