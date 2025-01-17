﻿#pragma once
/******************************************************************************/
class ProjectCipher {
    Cipher1 cipher1;
    Cipher2 cipher2;
    Cipher3 cipher3;
    Cipher *cipher_ptr;

    Cipher *operator()();
    ProjectCipher &clear();
    ProjectCipher &set(Project &proj);

  public:
    ProjectCipher();
};
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
