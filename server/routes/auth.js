const express = require("express");
const bcrypt = require("bcrypt");
const User = require("../models/user");

const authRouter = express.Router();

authRouter.post('/api/signup', async (req, res) => {
  const { name, email, password } = req.body;

  // Log the received data for debugging
  console.log('Received data:', { name, email, password });

  if (!email || !password) {
    return res.status(400).json({ msg: 'Please provide both email and password.' });
  }

  try {
    // Hash the password before saving
    const hashedPassword = await bcrypt.hash(password, 10);

    let user = new User({
      name,
      email,
      password: hashedPassword,
    });

    user = await user.save();
    res.json(user);
  } catch (error) {
    console.error('Error creating user:', error);
    res.status(500).json({ msg: 'Internal Server Error' });
  }
});

module.exports = authRouter;


