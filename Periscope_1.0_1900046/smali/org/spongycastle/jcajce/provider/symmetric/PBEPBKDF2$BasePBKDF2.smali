.class public Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2"
.end annotation


# instance fields
.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 125
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 127
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    .line 128
    return-void
.end method

.method private ˌ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)I
    .locals 3

    .line 189
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->agW:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x6

    return v0

    .line 193
    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqU:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeySpec: unknown PRF algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 15

    .line 134
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_5

    .line 136
    move-object/from16 v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    move-object v9, v0

    .line 138
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "missing required salt"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 145
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

    .line 149
    :cond_1
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v0

    if-gtz v0, :cond_2

    .line 151
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

    .line 155
    :cond_2
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    instance-of v0, v9, Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;

    if-eqz v0, :cond_4

    .line 162
    move-object v0, v9

    check-cast v0, Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;

    move-object v10, v0

    .line 164
    invoke-virtual {v10}, Lorg/spongycastle/jcajce/spec/PBKDF2KeySpec;->fS()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->ˌ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v11

    .line 165
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v12

    .line 166
    const/4 v13, -0x1

    .line 167
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v9, v0, v11, v12}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v14

    .line 169
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->aZp:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v9

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v0

    .line 173
    :cond_4
    const/4 v10, 0x1

    .line 174
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v11

    .line 175
    const/4 v12, -0x1

    .line 176
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v9, v0, v10, v11}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v13

    .line 178
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->aZp:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move v4, v10

    move v5, v11

    move v6, v12

    move-object v7, v9

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v0

    .line 182
    :cond_5
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
