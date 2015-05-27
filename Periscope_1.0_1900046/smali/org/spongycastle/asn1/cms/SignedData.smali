.class public Lorg/spongycastle/asn1/cms/SignedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final afG:Lorg/spongycastle/asn1/ASN1Integer;

.field private static final afH:Lorg/spongycastle/asn1/ASN1Integer;

.field private static final afI:Lorg/spongycastle/asn1/ASN1Integer;

.field private static final afJ:Lorg/spongycastle/asn1/ASN1Integer;


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private afK:Lorg/spongycastle/asn1/ASN1Set;

.field private afL:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private afM:Lorg/spongycastle/asn1/ASN1Set;

.field private afN:Lorg/spongycastle/asn1/ASN1Set;

.field private afO:Z

.field private afP:Z

.field private afr:Lorg/spongycastle/asn1/ASN1Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/cms/SignedData;->afG:Lorg/spongycastle/asn1/ASN1Integer;

    .line 63
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/cms/SignedData;->afH:Lorg/spongycastle/asn1/ASN1Integer;

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/cms/SignedData;->afI:Lorg/spongycastle/asn1/ASN1Integer;

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/cms/SignedData;->afJ:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 296
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 298
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 299
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->afK:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 300
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->afL:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 302
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 304
    iget-boolean v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->afO:Z

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedData;->afM:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 314
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_3

    .line 316
    iget-boolean v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->afP:Z

    if-eqz v0, :cond_2

    .line 318
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 322
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedData;->afr:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 326
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedData;->afN:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 328
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
