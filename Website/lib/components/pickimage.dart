// components/pickimage.dart


/*

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Mosquito Image'),
      ),
      body: Column(
        children: [
          _image != null
              ? Image.file(_image!)
              : Text('No image selected.'),
          ElevatedButton(
            onPressed: _pickImage,
            child: Text('Pick Image'),
          ),
        ],
      ),
    );
  }
}
 */