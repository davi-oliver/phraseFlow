import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_theme.dart';
import 'package:phrase_flow/components/flutter_flow/internationalization.dart';

class QuestionaryWidgets {
  BuildContext context;
  QuestionaryWidgets(this.context);
}

class botaoVerificar extends StatelessWidget {
  const botaoVerificar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('SuccessPage');
      },
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: Color(0xF313EE0B),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0xF313EE0B),
              offset: Offset(0.0, -2.0),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        alignment: AlignmentDirectional(0.00, -0.35),
        child: Text(
          FFLocalizations.of(context).getText(
            'kaegbx3m' /* Verificar */,
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Lexend Deca',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
