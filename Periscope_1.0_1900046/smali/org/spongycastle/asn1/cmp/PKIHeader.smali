.class public Lorg/spongycastle/asn1/cmp/PKIHeader;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final adq:Lorg/spongycastle/asn1/x509/GeneralName;


# instance fields
.field private adA:Lorg/spongycastle/asn1/ASN1OctetString;

.field private adB:Lorg/spongycastle/asn1/cmp/PKIFreeText;

.field private adC:Lorg/spongycastle/asn1/ASN1Sequence;

.field private adr:Lorg/spongycastle/asn1/ASN1Integer;

.field private ads:Lorg/spongycastle/asn1/x509/GeneralName;

.field private adt:Lorg/spongycastle/asn1/x509/GeneralName;

.field private adu:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private adv:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private adw:Lorg/spongycastle/asn1/ASN1OctetString;

.field private adx:Lorg/spongycastle/asn1/ASN1OctetString;

.field private ady:Lorg/spongycastle/asn1/ASN1OctetString;

.field private adz:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DERSequence;-><init>()V

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/X500Name;->ᒾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adq:Lorg/spongycastle/asn1/x509/GeneralName;

    return-void
.end method

.method private ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2

    .line 255
    if-eqz p3, :cond_0

    .line 257
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 259
    :cond_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 235
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 237
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adr:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 238
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->ads:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 239
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adt:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 240
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adu:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 241
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adv:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 242
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adw:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v1, 0x2

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 243
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adx:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v1, 0x3

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 244
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->ady:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v1, 0x4

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 245
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adz:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v1, 0x5

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 246
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adA:Lorg/spongycastle/asn1/ASN1OctetString;

    const/4 v1, 0x6

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 247
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adB:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    const/4 v1, 0x7

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 248
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->adC:Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0x8

    invoke-direct {p0, v2, v1, v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->ˊ(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 250
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
