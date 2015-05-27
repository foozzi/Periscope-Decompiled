.class public Lorg/spongycastle/asn1/cmp/PKIStatus;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final adH:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final adI:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final adJ:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final adK:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final adL:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final adM:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field public static final adN:Lorg/spongycastle/asn1/cmp/PKIStatus;


# instance fields
.field private adO:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adH:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 21
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adI:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 22
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adJ:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 23
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adK:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adL:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adM:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adN:Lorg/spongycastle/asn1/cmp/PKIStatus;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .line 32
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adO:Lorg/spongycastle/asn1/ASN1Integer;

    .line 38
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatus;->adO:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
