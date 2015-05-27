.class public Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field public static final asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field public static final atb:Lorg/spongycastle/asn1/ASN1Integer;

.field public static final atc:Lorg/spongycastle/asn1/ASN1Integer;


# instance fields
.field private akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private asZ:Lorg/spongycastle/asn1/ASN1Integer;

.field private ata:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atb:Lorg/spongycastle/asn1/ASN1Integer;

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atc:Lorg/spongycastle/asn1/ASN1Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atb:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asZ:Lorg/spongycastle/asn1/ASN1Integer;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atc:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ata:Lorg/spongycastle/asn1/ASN1Integer;

    .line 54
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 71
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 72
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atb:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asZ:Lorg/spongycastle/asn1/ASN1Integer;

    .line 74
    sget-object v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atc:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ata:Lorg/spongycastle/asn1/ASN1Integer;

    .line 76
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 78
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v3, v0

    .line 80
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 83
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ʿ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 84
    goto :goto_2

    .line 86
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ʿ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 87
    goto :goto_2

    .line 89
    :pswitch_2
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asZ:Lorg/spongycastle/asn1/ASN1Integer;

    .line 90
    goto :goto_2

    .line 92
    :pswitch_3
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/ASN1Integer;->ˋ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ata:Lorg/spongycastle/asn1/ASN1Integer;

    .line 93
    goto :goto_2

    .line 95
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asZ:Lorg/spongycastle/asn1/ASN1Integer;

    .line 65
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ata:Lorg/spongycastle/asn1/ASN1Integer;

    .line 66
    return-void
.end method

.method public static ʺ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 2

    .line 33
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 148
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asN:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asO:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asZ:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atb:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asZ:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ata:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->atc:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ata:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 170
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public ga()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->akB:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public gb()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asL:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public gj()Ljava/math/BigInteger;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->asZ:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public gk()Ljava/math/BigInteger;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ata:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
