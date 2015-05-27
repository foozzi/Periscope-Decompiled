.class public Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final aAV:[Lorg/spongycastle/asn1/ASN1Sequence;


# instance fields
.field private aAC:Lorg/spongycastle/asn1/x509/Time;

.field private aAU:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private ahV:Lorg/spongycastle/asn1/x509/Extensions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1Sequence;

    sput-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 54
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 56
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 57
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 60
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 61
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 62
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 63
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAV:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->כ(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAC:Lorg/spongycastle/asn1/x509/Time;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->ahV:Lorg/spongycastle/asn1/x509/Extensions;

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->aAU:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 68
    return-void
.end method

.method private static כ(I)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 6

    .line 248
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 250
    invoke-static {p0}, Lorg/spongycastle/asn1/x509/CRLReason;->ך(I)Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v4

    .line 254
    :try_start_0
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->ayP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 255
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_0

    .line 257
    :catch_0
    move-exception v5

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error encoding reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
