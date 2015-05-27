.class public Lo/ȯ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ϒ;


# instance fields
.field private final xZ:[B

.field private final yb:[B

.field private final zP:Lo/ϒ;

.field private zQ:Ljavax/crypto/CipherInputStream;


# direct methods
.method public constructor <init>(Lo/ϒ;[B[B)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/ȯ;->zP:Lo/ϒ;

    .line 53
    iput-object p2, p0, Lo/ȯ;->xZ:[B

    .line 54
    iput-object p3, p0, Lo/ȯ;->yb:[B

    .line 55
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ȯ;->zQ:Ljavax/crypto/CipherInputStream;

    .line 88
    iget-object v0, p0, Lo/ȯ;->zP:Lo/ϒ;

    invoke-interface {v0}, Lo/ϒ;->close()V

    .line 89
    return-void
.end method

.method public read([BII)I
    .locals 2

    .line 93
    iget-object v0, p0, Lo/ȯ;->zQ:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ړ;->ᐟ(Z)V

    .line 94
    iget-object v0, p0, Lo/ȯ;->zQ:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v1

    .line 95
    if-gez v1, :cond_1

    .line 96
    const/4 v0, -0x1

    return v0

    .line 98
    :cond_1
    return v1
.end method

.method public ˊ(Lo/к;)J
    .locals 7

    .line 61
    const-string v0, "AES/CBC/PKCS7Padding"

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 66
    goto :goto_0

    .line 62
    :catch_0
    move-exception v4

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 64
    :catch_1
    move-exception v4

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 68
    :goto_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v0, p0, Lo/ȯ;->xZ:[B

    const-string v1, "AES"

    invoke-direct {v4, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 69
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, p0, Lo/ȯ;->yb:[B

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 72
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v3, v0, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 77
    goto :goto_1

    .line 73
    :catch_2
    move-exception v6

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :catch_3
    move-exception v6

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 79
    :goto_1
    new-instance v0, Ljavax/crypto/CipherInputStream;

    new-instance v1, Lo/Ϝ;

    iget-object v2, p0, Lo/ȯ;->zP:Lo/ϒ;

    invoke-direct {v1, v2, p1}, Lo/Ϝ;-><init>(Lo/ϒ;Lo/к;)V

    invoke-direct {v0, v1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lo/ȯ;->zQ:Ljavax/crypto/CipherInputStream;

    .line 82
    const-wide/16 v0, -0x1

    return-wide v0
.end method
