.class public Lorg/spongycastle/asn1/x509/Holder;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field azx:Lorg/spongycastle/asn1/x509/GeneralNames;

.field azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

.field private version:I


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 99
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/asn1/x509/Holder;->version:I

    .line 100
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 102
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

    .line 106
    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v3, v0, :cond_1

    .line 108
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->ˑ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    .line 115
    goto :goto_2

    .line 117
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->ˍ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azx:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 118
    goto :goto_2

    .line 120
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->ـ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    .line 121
    goto :goto_2

    .line 123
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/asn1/x509/Holder;->version:I

    .line 127
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/asn1/x509/Holder;->version:I

    .line 79
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 82
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->ˑ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    .line 83
    goto :goto_1

    .line 85
    :sswitch_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->ˍ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azx:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 86
    goto :goto_1

    .line 88
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in Holder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/x509/Holder;->version:I

    .line 91
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public static İ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Holder;
    .locals 2

    .line 56
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Holder;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/Holder;

    return-object v0

    .line 60
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/x509/Holder;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/Holder;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 64
    :cond_1
    if-eqz p0, :cond_2

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/x509/Holder;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/Holder;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 69
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 212
    iget v0, p0, Lorg/spongycastle/asn1/x509/Holder;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 214
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 216
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Holder;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azx:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Holder;->azx:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Holder;->azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    .line 235
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azx:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_4

    .line 237
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Holder;->azx:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 241
    :cond_4
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/Holder;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azw:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getEntityName()Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azx:Lorg/spongycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Holder;->azy:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/spongycastle/asn1/x509/Holder;->version:I

    return v0
.end method
