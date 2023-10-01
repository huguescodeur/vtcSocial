
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source)async{
  final ImagePicker imagePicker = ImagePicker();
  XFile? xFile = await imagePicker.pickImage(source: source);
  if(xFile != null){
    return xFile.readAsBytes();
  }
  Fluttertoast.showToast(msg: "No picture selected");
}