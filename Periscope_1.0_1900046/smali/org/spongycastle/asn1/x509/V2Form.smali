.class public Lorg/spongycastle/asn1/x509/V2Form;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aAT:Lorg/spongycastle/asn1/x509/GeneralNames;

.field azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6

    .line 75
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_1

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->＿(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->aAT:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 89
    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v4, v0, :cond_4

    .line 91
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 92
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    if-nez v0, :cond_2

    .line 94
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->ˑ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 98
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->ـ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    goto :goto_1

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_4
    return-void
.end method

.method public static ᐧ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/V2Form;
    .locals 1

    .line 22
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/V2Form;->ᓒ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/V2Form;

    move-result-object v0

    return-object v0
.end method

.method public static ᓒ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/V2Form;
    .locals 2

    .line 28
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/V2Form;

    return-object v0

    .line 32
    :cond_0
    if-eqz p0, :cond_1

    .line 34
    new-instance v0, Lorg/spongycastle/asn1/x509/V2Form;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/V2Form;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 138
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->aAT:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->aAT:Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2Form;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2Form;->azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public ih()Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2Form;->aAT:Lorg/spongycastle/asn1/x509/GeneralNames;

    return-object v0
.end method
