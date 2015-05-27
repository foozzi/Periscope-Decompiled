.class public Lorg/spongycastle/asn1/isismtt/x509/Admissions;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private amJ:Lorg/spongycastle/asn1/x509/GeneralName;

.field private amL:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

.field private amM:Lorg/spongycastle/asn1/ASN1Sequence;


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 171
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 173
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->amJ:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->amJ:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->amL:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->amL:Lorg/spongycastle/asn1/isismtt/x509/NamingAuthority;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/Admissions;->amM:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 183
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
