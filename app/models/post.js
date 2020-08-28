const mongoose = require('mongoose')

// const commentSchema = new mongoose.Schema({
//   body: {
//     type: String,
//     required: true
//   },
//   owner: {
//     type: mongoose.Schema.Types.ObjectId,
//     ref: 'User',
//     required: true
//   }
//
// })
const postSchema = new mongoose.Schema({
  body: {
    type: String,
    required: true
  },
  // comments: [commentSchema]
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
})

module.exports = mongoose.model('Post', postSchema)
