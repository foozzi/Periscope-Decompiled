.class Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreEntry"
.end annotation


# instance fields
.field aYw:Ljava/lang/String;

.field aYx:[Ljava/security/cert/Certificate;

.field aYy:Ljava/util/Date;

.field final synthetic aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field obj:Ljava/lang/Object;

.field type:I


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 12

    .line 131
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 133
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYw:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYx:[Ljava/security/cert/Certificate;

    .line 136
    const/16 v0, 0x14

    new-array v6, v0, [B

    .line 138
    iget-object v0, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 139
    iget-object v0, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 141
    iget-object v0, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->aFa:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v7, v0, 0x400

    .line 144
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    array-length v0, v6

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 148
    invoke-virtual {v9, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 149
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    move-object v0, p1

    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    move-object/from16 v3, p4

    move-object v4, v6

    move v5, v7

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 152
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v11, v9, v10}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 154
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    invoke-static {p1, p3, v9}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 158
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 160
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 109
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYw:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYx:[Ljava/security/cert/Certificate;

    .line 112
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    .line 169
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYw:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    .line 171
    iput p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 172
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 173
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 1

    .line 181
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    .line 182
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYw:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    .line 184
    iput p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 185
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 186
    iput-object p6, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYx:[Ljava/security/cert/Certificate;

    .line 187
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1

    .line 118
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 120
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYw:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 122
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYx:[Ljava/security/cert/Certificate;

    .line 123
    return-void
.end method


# virtual methods
.method getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYx:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYy:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 191
    iget v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    return v0
.end method

.method nO()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYw:Ljava/lang/String;

    return-object v0
.end method

.method ᐝ([C)Ljava/lang/Object;
    .locals 18

    .line 208
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Key;

    if-eqz v0, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 218
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    :try_start_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v8, v0, [B

    .line 225
    invoke-virtual {v7, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 227
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    move-object/from16 v3, p1

    move-object v4, v8

    move v5, v9

    const/4 v2, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 231
    new-instance v11, Ljavax/crypto/CipherInputStream;

    invoke-direct {v11, v7, v10}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    move-object/from16 v0, p0

    :try_start_1
    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 237
    :catch_0
    move-exception v12

    .line 239
    :try_start_2
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 240
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 242
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v8, v0, [B

    .line 244
    invoke-virtual {v7, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 246
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v1, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    move-object/from16 v3, p1

    move-object v4, v8

    move v5, v9

    const/4 v2, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 250
    new-instance v11, Ljavax/crypto/CipherInputStream;

    invoke-direct {v11, v7, v10}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 252
    const/4 v13, 0x0

    .line 256
    move-object/from16 v0, p0

    :try_start_3
    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    .line 274
    goto :goto_0

    .line 258
    :catch_1
    move-exception v14

    .line 260
    :try_start_4
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 261
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 263
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v8, v0, [B

    .line 265
    invoke-virtual {v7, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 267
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v1, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    move-object/from16 v3, p1

    move-object v4, v8

    move v5, v9

    const/4 v2, 0x2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 271
    new-instance v11, Ljavax/crypto/CipherInputStream;

    invoke-direct {v11, v7, v10}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v13

    .line 279
    :goto_0
    if-eqz v13, :cond_2

    .line 281
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    array-length v0, v8

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    invoke-virtual {v15, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 286
    invoke-virtual {v15, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    move-object/from16 v3, p1

    move-object v4, v8

    move v5, v9

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v16

    .line 289
    new-instance v17, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 291
    new-instance v15, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->aYz:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-static {v0, v13, v15}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->ˊ(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 295
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 297
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 299
    return-object v13

    .line 303
    :cond_2
    :try_start_5
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "no match"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 307
    :catch_2
    move-exception v8

    .line 309
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "no match"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "forget something!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
