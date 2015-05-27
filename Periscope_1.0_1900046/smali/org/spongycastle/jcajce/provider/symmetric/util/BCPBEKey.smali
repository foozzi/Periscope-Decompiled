.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field aKY:Lorg/spongycastle/crypto/CipherParameters;

.field aWI:Ljava/lang/String;

.field aYT:I

.field aYU:I

.field aZc:Ljavax/crypto/spec/PBEKeySpec;

.field aZd:Z

.field ahI:I

.field aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZd:Z

    .line 38
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aWI:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    iput p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 41
    iput p4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aYT:I

    .line 42
    iput p5, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->ahI:I

    .line 43
    iput p6, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aYU:I

    .line 44
    iput-object p7, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZc:Ljavax/crypto/spec/PBEKeySpec;

    .line 45
    iput-object p8, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    .line 46
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aWI:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v2, v0

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v2, v0

    .line 73
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZc:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˏ([C)[B

    move-result-object v0

    return-object v0

    .line 81
    :cond_2
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 83
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZc:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˎ([C)[B

    move-result-object v0

    return-object v0

    .line 87
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZc:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/PBEParametersGenerator;->ˋ([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZc:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method getKeySize()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->ahI:I

    return v0
.end method

.method public getPassword()[C
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZc:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZc:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    return v0
.end method

.method nS()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aYT:I

    return v0
.end method

.method public nT()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aYU:I

    return v0
.end method

.method public nU()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aKY:Lorg/spongycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public nV()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method nW()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZd:Z

    return v0
.end method

.method public ﻧ(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->aZd:Z

    .line 149
    return-void
.end method
