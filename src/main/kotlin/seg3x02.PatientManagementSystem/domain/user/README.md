# User Sub-Domain

- **Category**: Generic
- **Description**

  Concepts related to users. Captures the information associated to users and processes including registering, removing, logging in, logging out...

- **Rationale**

  For this sub-domain, most if not all systems that employ user information require authentication to allow certain information to only be accessed by certain user roles or the user themselves. Because of this, it makes sense that an authentication module takes care of the authentication logic so that many different applications can use the same code instead of having every developer rewrite the same authentication logic. This primarily covers the use case Register Staff, Staff log in, Staff log out. These use cases could be attributed to many other applications and likely have existing implementations, thus they are generic.