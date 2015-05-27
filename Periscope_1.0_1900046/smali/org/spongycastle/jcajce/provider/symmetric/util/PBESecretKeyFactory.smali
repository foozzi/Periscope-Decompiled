.class public Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source ""

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private aYS:Z

.field private aYT:I

.field private aYU:I

.field private ahI:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 33
    iput-boolean p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYS:Z

    .line 34
    iput p4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    .line 35
    iput p5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYT:I

    .line 36
    iput p6, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ahI:I

    .line 37
    iput p7, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYU:I

    .line 38
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 11

    .line 44
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_2

    .line 46
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    move-object v9, v0

    .line 49
    invoke-virtual {v9}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aZp:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYT:I

    iget v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ahI:I

    iget v6, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYU:I

    move-object v7, v9

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v0

    .line 54
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYS:Z

    if-eqz v0, :cond_1

    .line 56
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYT:I

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ahI:I

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYU:I

    invoke-static {v9, v0, v1, v2, v3}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v10

    goto :goto_0

    .line 60
    :cond_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYT:I

    iget v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ahI:I

    invoke-static {v9, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->ˊ(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v10

    .line 63
    :goto_0
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aZp:Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aZw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYT:I

    iget v5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ahI:I

    iget v6, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->aYU:I

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v0

    .line 66
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
