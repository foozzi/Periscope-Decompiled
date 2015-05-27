.class public Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESPBEKeyFactory"
.end annotation


# instance fields
.field private aYS:Z

.field private aYT:I

.field private aYU:I

.field private ahI:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .locals 0

    .line 303
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 305
    iput-boolean p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYS:Z

    .line 306
    iput p4, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    .line 307
    iput p5, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYT:I

    .line 308
    iput p6, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ahI:I

    .line 309
    iput p7, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYU:I

    .line 310
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 12

    .line 316
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_3

    .line 318
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    move-object v9, v0

    .line 321
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aZp:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYT:I

    iget v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ahI:I

    iget v6, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYU:I

    move-object v7, v9

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v0

    .line 326
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYS:Z

    if-eqz v0, :cond_1

    .line 328
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYT:I

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ahI:I

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYU:I

    invoke-static {v9, v0, v1, v2, v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v10

    goto :goto_0

    .line 332
    :cond_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYT:I

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ahI:I

    invoke-static {v9, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v10

    .line 336
    :goto_0
    instance-of v0, v10, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    .line 338
    move-object v0, v10

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v11, v0

    goto :goto_1

    .line 342
    :cond_2
    move-object v0, v10

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v11, v0

    .line 345
    :goto_1
    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/params/DESParameters;->ı([B)V

    .line 347
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aZp:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYT:I

    iget v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ahI:I

    iget v6, p0, Lorg/spongycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->aYU:I

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v0

    .line 350
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
