import 'package:flutter/material.dart';

import 'package:round1_web/views/layout_template/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: LayoutTemplate(),
    );
  }
}
/*
- With the submission of build week 2 (version 0.2.0) there are still lots of issues that have popped up regarding the actual implementation of the information needed for this project
- I was able to get a good footing to on where I wanted this to go. I would need to substitute what the initail Demo was intending to use for this
- I did not implement all of the features that I would have liked to for this iterative release 0.2.0
  - no comment are
  - no embedded video links
  - lack of tabs possed in my initial idea
  - ect
- there are a lot of things that could have been done differently
- and my eyes were way bigger than my appetite
  - I bit off more ideas than I could chew and I burnt myself out
 */
/*
- With the submission of build week one ( version 0.1.0), I simply just realeased a demo recreation with minor detailing.
    I only implimented a sizing adjustment for the window once it was ran. I am attempting to create my own, assest names and features that
    have an impact on how I would like this whole project to pan out.
    
- Hopefully in the next release (version 0.2.0), build week 2, I will have made a few more functioning part of this bare bones web app
    - for example
        - implimenting pages that will introduce those who set up the event and those of whom are participanting
            - Creating users that are "participants" for the events (posting their basic information)
                - such as: A picture fo themselves, Name, Age, College, small Bio, Description of the project, and a link 
                    to their project (maybe a video of sorts)allowing them to have a comment section to accomidate for the schedule
                    of the students allowing them to respond on their own time.
                - for those who are part of the team that set up the event(s) there will be a separate part for them to introduce 
                    themselves. Similarly: A picture of themselves, Name, Age (optional), College, Bio, 
                    (maybe what they are looking forward to)


- This just being part of the idea that I would like to accomplish in my next iteration

*/
