.class public Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# instance fields
.field private aYV:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 146
    const-string v0, "DESede"

    new-instance v1, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    const/16 v2, 0xc0

    invoke-direct {p0, v0, v2, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aYV:Z

    .line 147
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    .line 159
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZs:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/spongycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZq:I

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->ˊ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZs:Z

    .line 169
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aYV:Z

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/CipherKeyGenerator;->iI()[B

    move-result-object v4

    .line 173
    const/4 v0, 0x0

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-static {v4, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZp:Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 179
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZr:Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/CipherKeyGenerator;->iI()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aZp:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 1

    .line 153
    invoke-super {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;->engineInit(ILjava/security/SecureRandom;)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DESede$KeyGenerator;->aYV:Z

    .line 155
    return-void
.end method
