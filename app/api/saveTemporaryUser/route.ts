import { auth } from "@/auth";

import { prisma } from "@/lib/db";
import { getUserByEmail } from "@/lib/user";

export const POST = async (req, res) => {

  const { email, password } = req.body;

  try {
    const lowerCaseEmail = email.toLowerCase();
    const user = await getUserByEmail(lowerCaseEmail);
    if (user) return res.status(200).json({ message: 'email has been registed' });
    await prisma.temporaryUser.create({
      data: {
        email: lowerCaseEmail,
        password,
      },
    });

    return res.status(200).json({ message: 'User saved successfully' });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: 'Failed to save user' });
  }
}
