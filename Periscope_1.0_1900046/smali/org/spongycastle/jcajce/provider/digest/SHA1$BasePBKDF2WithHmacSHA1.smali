.class public Lorg/spongycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2WithHmacSHA1"
.end annotation


# instance fields
.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 103
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 105
    iput p2, p0, Lorg/spongycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->scheme:I

    .line 106
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 14

    .line 112
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_4

    .line 114
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    move-object v9, v0

    .line 116
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "missing required salt"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 123
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positive iteration count required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v0

    if-gtz v0, :cond_2

    .line 129
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positive key length required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    const/4 v10, 0x1

    .line 139
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v11

    .line 140
    const/4 v12, -0x1

    .line 141
    iget v0, p0, Lorg/spongycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->scheme:I

    invoke-static {v9, v0, v10, v11}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v13

    .line 143
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->aZp:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/spongycastle/jcajce/provider/digest/SHA1$BasePBKDF2WithHmacSHA1;->scheme:I

    move v4, v10

    move v5, v11

    move v6, v12

    move-object v7, v9

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v0

    .line 146
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
