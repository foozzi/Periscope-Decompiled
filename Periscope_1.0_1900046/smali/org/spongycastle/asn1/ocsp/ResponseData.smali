.class public Lorg/spongycastle/asn1/ocsp/ResponseData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final apl:Lorg/spongycastle/asn1/ASN1Integer;


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private akv:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private apm:Z

.field private apn:Lorg/spongycastle/asn1/ocsp/ResponderID;

.field private apo:Lorg/spongycastle/asn1/ASN1Sequence;

.field private app:Lorg/spongycastle/asn1/x509/Extensions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/ocsp/ResponseData;->apl:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 164
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 166
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->apm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v1, Lorg/spongycastle/asn1/ocsp/ResponseData;->apl:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->apn:Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 172
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->akv:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 173
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->apo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 174
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->app:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_2

    .line 176
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponseData;->app:Lorg/spongycastle/asn1/x509/Extensions;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 179
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
