.class public Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private aFF:[B

.field private final aFH:Lorg/spongycastle/crypto/Digest;

.field private aFI:[B

.field private ahI:I


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 2

    .line 38
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    move-object v1, v0

    .line 40
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->ahI:I

    .line 42
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->iQ()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFF:[B

    .line 43
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->iR()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFI:[B

    .line 44
    return-void
.end method

.method public ᐧ([BII)I
    .locals 14

    .line 54
    array-length v0, p1

    sub-int v0, v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 56
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "output buffer too small"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    move/from16 v0, p3

    int-to-long v4, v0

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v6

    .line 68
    const-wide v0, 0x1ffffffffL

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output length too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    int-to-long v0, v6

    add-long/2addr v0, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    int-to-long v2, v6

    div-long/2addr v0, v2

    long-to-int v7, v0

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v8, v0, [B

    .line 77
    const/4 v9, 0x1

    .line 79
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_4

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFF:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFF:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 84
    new-instance v11, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    new-instance v12, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-static {v9}, Lorg/spongycastle/util/Pack;->ﮃ(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v12}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFI:[B

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFI:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget v2, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->ahI:I

    invoke-static {v2}, Lorg/spongycastle/util/Pack;->ﮃ(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v11}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v13

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v13

    const/4 v2, 0x0

    invoke-interface {v0, v13, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_1

    .line 106
    :catch_0
    move-exception v13

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode parameter info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 113
    move/from16 v0, p3

    if-le v0, v6, :cond_3

    .line 115
    const/4 v0, 0x0

    move/from16 v1, p2

    invoke-static {v8, v0, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    add-int p2, p2, v6

    .line 117
    sub-int p3, p3, v6

    goto :goto_2

    .line 121
    :cond_3
    const/4 v0, 0x0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v8, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 79
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 129
    long-to-int v0, v4

    return v0
.end method
