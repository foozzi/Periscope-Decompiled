.class public Lorg/spongycastle/asn1/x509/KeyPurposeId;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final aAa:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final aAb:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final aAc:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final aAd:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final aAe:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field private static final azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final azK:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azL:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azM:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azN:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azO:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azP:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azQ:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azR:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azS:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azT:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azU:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azV:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azW:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azX:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azY:Lorg/spongycastle/asn1/x509/KeyPurposeId;

.field public static final azZ:Lorg/spongycastle/asn1/x509/KeyPurposeId;


# instance fields
.field private ayt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.3"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/Extension;->azb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azK:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azL:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azM:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azN:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 48
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azO:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azP:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azQ:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azR:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azS:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 68
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azT:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 72
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azU:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 76
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azV:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 80
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "12"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azW:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azX:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 88
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azY:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 92
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "15"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azZ:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 96
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "16"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->aAa:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 100
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "17"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->aAb:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 104
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "18"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->aAc:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 108
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lorg/spongycastle/asn1/x509/KeyPurposeId;->azJ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "19"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->aAd:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    .line 116
    new-instance v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/KeyPurposeId;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->aAe:Lorg/spongycastle/asn1/x509/KeyPurposeId;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->ayt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 123
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/KeyPurposeId;->ayt:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
