.class public Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field ayl:Lorg/spongycastle/asn1/ASN1OctetString;

.field aym:Lorg/spongycastle/asn1/x509/GeneralNames;

.field ayn:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayl:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->aym:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayn:Lorg/spongycastle/asn1/ASN1Integer;

    .line 70
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v2

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERTaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 79
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ˏ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayl:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 80
    goto :goto_2

    .line 82
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/GeneralNames;->ˍ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->aym:Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 83
    goto :goto_2

    .line 85
    :pswitch_2
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayn:Lorg/spongycastle/asn1/ASN1Integer;

    .line 86
    goto :goto_2

    .line 88
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :goto_2
    goto :goto_0

    .line 91
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static ᵘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 2

    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    return-object v0

    .line 54
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 204
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayl:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayl:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->aym:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->aym:Lorg/spongycastle/asn1/x509/GeneralNames;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayn:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 218
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayn:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 222
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public gY()[B
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayl:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayl:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->ayl:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
