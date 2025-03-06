
import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';

class CustomCardInfo extends StatefulWidget {
  String? priority;
  String? title;
  String? description;
  String? username;

  CustomCardInfo({super.key,this.title,this.description,this.priority,this.username});

  @override
  State<CustomCardInfo> createState() => _CustomCardInfoState();
}

class _CustomCardInfoState extends State<CustomCardInfo> {
  Color? priorityColor = AppColors.lowGreen;
 Color? priorityTextColor = AppColors.darkGreen;

String checkPriority(String prioroty){
  String priorityName = '';
  switch(prioroty.toLowerCase()){
    case 'high':
    priorityColor = AppColors.lowRed;
    priorityTextColor = Colors.red;
    priorityName = 'High Priority';
    break;

    case 'meduim':
    priorityColor = AppColors.lowYellow;
    priorityTextColor = AppColors.darkOrange;
    priorityName = 'Meduim Priority';
    break;

    case 'low':
    priorityColor = AppColors.lowGreen;
    priorityTextColor = AppColors.darkGreen;
    priorityName = 'Low Priority';
    break;

    default:
    priorityName = 'Low Priority';
  }
   setState(() {});
  return priorityName;
}

@override
  void initState() {
    widget.priority = checkPriority(widget.priority?? 'Low');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.all(10),
              height: 190,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.moreLighterGray,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.85),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Align(
              alignment: Alignment.topRight,
              child: Text('2m ago',style: TextStyles.font12GreyRegular,),
            ),
                  Container(
                    width: 100,
                    height: 25,
                    decoration: BoxDecoration(
                      color: priorityColor,
                     //  Color(0xFFFEE2E2),
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        widget.priority?? 'Low Priority',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: priorityTextColor,
                        //   Colors.red,
                        ),
                      ),
                    ),
                  ),
                  verticalPadding(5),
                  Text(
                    widget.title?? 'Flood in Downtown Area',
                    style: TextStyles.font16BlackSemiBold,
                  ),
                  Text(
                    widget.description?? 'Central District, Main Street',
                    style: TextStyles.font14GreyRegular,
                  ),
                  verticalPadding(28),
                  _buildRow(
                    widget.username,
                  ), 
                ],
              ),
            );
  }

   Widget _buildRow(String? userName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.edit,
          size: 20,
          color: Color(0xFF2563EB),
        ),
        horizontalPadding(5),
        Text(
          userName??'username',
          style: TextStyles.font14GreyRegular.copyWith(color: Color(0xFF2563EB)),
        ),
        horizontalPadding(5),
        Icon(Icons.info,color: Color(0xFF4B5563,),size: 20,),
        horizontalPadding(5),
        Text(
          'Details',
          style:TextStyles.font14GreyRegular.copyWith(color: Color(0xFF2563EB)),
        ),
      ],
    );
    }
}

