.class public Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 938
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 939
    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 17

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 948
    if-nez p1, :cond_0

    .line 950
    return-void

    .line 953
    :cond_0
    new-instance v6, Ljava/io/DataInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 954
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 956
    const/4 v0, 0x2

    if-eq v7, v0, :cond_1

    .line 958
    if-eqz v7, :cond_1

    const/4 v0, 0x1

    if-eq v7, v0, :cond_1

    .line 960
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Wrong version of key store."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 964
    :cond_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v8, v0, [B

    .line 966
    array-length v0, v8

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    .line 968
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Key store corrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_2
    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 973
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 975
    if-ltz v9, :cond_3

    const/16 v0, 0x1000

    if-le v9, v0, :cond_4

    .line 977
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Key store corrupted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_4
    if-nez v7, :cond_5

    .line 983
    const-string v10, "OldPBEWithSHAAndTwofish-CBC"

    goto :goto_0

    .line 987
    :cond_5
    const-string v10, "PBEWithSHAAndTwofish-CBC"

    .line 990
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, p2

    move-object v4, v8

    move v5, v9

    const/4 v2, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v11

    .line 991
    new-instance v12, Ljavax/crypto/CipherInputStream;

    invoke-direct {v12, v6, v11}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 993
    new-instance v13, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v13}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 994
    new-instance v14, Lorg/spongycastle/crypto/io/DigestInputStream;

    invoke-direct {v14, v12, v13}, Lorg/spongycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Digest;)V

    .line 996
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->ｰ(Ljava/io/InputStream;)V

    .line 999
    invoke-interface {v13}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v15, v0, [B

    .line 1000
    const/4 v0, 0x0

    invoke-interface {v13, v15, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1004
    invoke-interface {v13}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 1005
    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lorg/spongycastle/util/io/Streams;->ˎ(Ljava/io/InputStream;[B)I

    .line 1007
    move-object/from16 v0, v16

    invoke-static {v15, v0}, Lorg/spongycastle/util/Arrays;->ｰ([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->ays:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1010
    new-instance v0, Ljava/io/IOException;

    const-string v1, "KeyStore integrity check failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_6
    return-void
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 13

    .line 1018
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1019
    const/16 v0, 0x14

    new-array v8, v0, [B

    .line 1020
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v9, v0, 0x400

    .line 1022
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1024
    iget v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1025
    array-length v0, v8

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1026
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 1027
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1029
    move-object v0, p0

    const-string v1, "PBEWithSHAAndTwofish-CBC"

    move-object v3, p2

    move-object v4, v8

    move v5, v9

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 1031
    new-instance v10, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v10, v7, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1032
    new-instance v11, Lorg/spongycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v11, v0}, Lorg/spongycastle/crypto/io/DigestOutputStream;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 1034
    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    invoke-direct {v0, v10, v11}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->ͺ(Ljava/io/OutputStream;)V

    .line 1036
    invoke-virtual {v11}, Lorg/spongycastle/crypto/io/DigestOutputStream;->hs()[B

    move-result-object v12

    .line 1038
    invoke-virtual {v10, v12}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1040
    invoke-virtual {v10}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1041
    return-void
.end method
