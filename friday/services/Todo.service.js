const TodoModel = require("../models/Todo.model");
// export 1. way 1 :: adding export with functions
const createTodo = async (text, password) => {
  return await TodoModel.create({ text, password });
};
const getTodo = async () => {
  return await TodoModel.find();
};

const loginWithIDAndPassword = async(id,password)=>{
  const user = await TodoModel.findById(id)
  if(user){
    user.password //hash
    return{success: true , message: "User Found",  status: 200}
  }
  else return{success: false , message: "User Not Found",  status: 404}
}

module.exports = {
  createTodo,
  getTodo,
  loginWithIDAndPassword
};
