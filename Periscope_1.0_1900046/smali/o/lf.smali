.class abstract Lo/lf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field OG:[B

.field OH:[B

.field OI:Z

.field Oh:Ljava/lang/String;

.field Oi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lo/lf;->OG:[B

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lo/lf;->OH:[B

    .line 26
    const-string v0, "0123456789012345"

    iput-object v0, p0, Lo/lf;->Oi:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/lf;->OI:Z

    .line 34
    if-eqz p2, :cond_0

    iput-object p2, p0, Lo/lf;->Oi:Ljava/lang/String;

    .line 35
    :cond_0
    iput-object p1, p0, Lo/lf;->Oh:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static ˈ([B)[B
    .locals 8

    .line 53
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    move-object v4, p0

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-byte v7, v4, v6

    and-int/lit16 v0, v7, 0xff

    add-int/lit16 v0, v0, 0x100

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 57
    :catch_0
    move-exception v4

    .line 58
    new-instance v0, Lo/lh;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0
.end method

.method public static ˉ([B)[B
    .locals 5

    .line 168
    const-string v0, "SHA-256"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 169
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 170
    return-object v4

    .line 171
    :catch_0
    move-exception v4

    .line 172
    new-instance v0, Lo/lh;

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x457

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0
.end method

.method private static ˎ(ILjava/lang/String;)Lo/lg;
    .locals 1

    .line 63
    sget-object v0, Lo/lg;->Ps:Lo/lg;

    invoke-static {v0, p0, p1}, Lo/lg;->ˊ(Lo/lg;ILjava/lang/String;)Lo/lg;

    move-result-object v0

    return-object v0
.end method

.method public static ι(Ljava/lang/String;)[B
    .locals 5

    .line 148
    const-string v0, "MD5"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 149
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 150
    return-object v4

    .line 151
    :catch_0
    move-exception v4

    .line 152
    new-instance v0, Lo/lh;

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 153
    :catch_1
    move-exception v4

    .line 154
    new-instance v0, Lo/lh;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x77

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0
.end method


# virtual methods
.method public aD()V
    .locals 4

    .line 39
    iget-boolean v0, p0, Lo/lf;->OI:Z

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo/lf;->Oh:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lo/lf;->ˉ([B)[B

    move-result-object v1

    invoke-static {v1}, Lo/lf;->ˈ([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lo/lf;->OG:[B

    .line 44
    iget-object v0, p0, Lo/lf;->Oi:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lo/lf;->OH:[B

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/lf;->OI:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    .line 47
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 49
    :goto_0
    return-void
.end method

.method public ˢ(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lo/lf;->aD()V

    .line 103
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, p0, Lo/lf;->OH:[B

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 104
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lo/lf;->OG:[B

    const-string v1, "AES"

    invoke-direct {v4, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 105
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 106
    const/4 v0, 0x2

    invoke-virtual {v5, v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lo/kh;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    return-object v0

    .line 108
    :catch_0
    move-exception v3

    .line 109
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 110
    :catch_1
    move-exception v3

    .line 111
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 112
    :catch_2
    move-exception v3

    .line 113
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x71

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 114
    :catch_3
    move-exception v3

    .line 115
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x72

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 116
    :catch_4
    move-exception v3

    .line 117
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x73

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 118
    :catch_5
    move-exception v3

    .line 119
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x74

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 120
    :catch_6
    move-exception v3

    .line 121
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 122
    :catch_7
    move-exception v3

    .line 123
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0
.end method

.method public ˤ(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lo/lf;->aD()V

    .line 69
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, p0, Lo/lf;->OH:[B

    invoke-direct {v3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 70
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lo/lf;->OG:[B

    const-string v1, "AES"

    invoke-direct {v4, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 71
    const/4 v5, 0x0

    .line 72
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 73
    const/4 v0, 0x1

    invoke-virtual {v5, v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 74
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lo/kh;->ʿ([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6

    return-object v0

    .line 75
    :catch_0
    move-exception v3

    .line 76
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 77
    :catch_1
    move-exception v3

    .line 78
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 79
    :catch_2
    move-exception v3

    .line 80
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 81
    :catch_3
    move-exception v3

    .line 82
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 83
    :catch_4
    move-exception v3

    .line 84
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 85
    :catch_5
    move-exception v3

    .line 86
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0

    .line 87
    :catch_6
    move-exception v3

    .line 88
    new-instance v0, Lo/lh;

    invoke-virtual {v3}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2, v1}, Lo/lf;->ˎ(ILjava/lang/String;)Lo/lg;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/lh;-><init>(Lo/lg;)V

    throw v0
.end method
