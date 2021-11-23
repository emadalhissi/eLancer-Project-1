import 'package:elancer_project_1/widgets/work_staff_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WorkStaffScreen extends StatefulWidget {
  const WorkStaffScreen({Key? key}) : super(key: key);

  @override
  _WorkStaffScreenState createState() => _WorkStaffScreenState();
}

class _WorkStaffScreenState extends State<WorkStaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.workStaffScreen_screenMainTitle,
          style: TextStyle(
            color: Colors.grey.shade800,
          ),
        ),
        centerTitle: true,
        leadingWidth: 80,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: CircleAvatar(
            backgroundColor: Color(0xff0597db),
            radius: 40,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              WorkStaffCard(
                image: 'images/woman.png',
                name: AppLocalizations.of(context)!.workStaffScreen_firstContainerName,
                position: AppLocalizations.of(context)!.workStaffScreen_firstContainerPosition,
                facebookPage:
                    'https://www.facebook.com/profile.php?id=100013398008625',
              ),
              WorkStaffCard(
                image: 'images/man.png',
                name: AppLocalizations.of(context)!.workStaffScreen_secondContainerName,
                position: AppLocalizations.of(context)!.workStaffScreen_secondContainerPosition,
                facebookPage: 'https://www.facebook.com/abuhassira.mohammed',
                email: 'mhassira@ucas.edu.ps',
                number: '+970597407401',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
