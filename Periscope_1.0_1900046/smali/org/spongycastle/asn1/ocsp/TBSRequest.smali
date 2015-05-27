.class public Lorg/spongycastle/asn1/ocsp/TBSRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final apl:Lorg/spongycastle/asn1/ASN1Integer;


# instance fields
.field aek:Lorg/spongycastle/asn1/ASN1Integer;

.field apA:Lorg/spongycastle/asn1/ASN1Sequence;

.field apB:Lorg/spongycastle/asn1/x509/Extensions;

.field apC:Z

.field apz:Lorg/spongycastle/asn1/x509/GeneralName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apl:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 147
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v1, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apl:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apC:Z

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apz:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apz:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apA:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apB:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_3

    .line 167
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/TBSRequest;->apB:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 170
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
