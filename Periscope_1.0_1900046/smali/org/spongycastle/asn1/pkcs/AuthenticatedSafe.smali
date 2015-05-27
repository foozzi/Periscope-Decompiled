.class public Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

.field private apR:Z


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apR:Z

    .line 19
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/pkcs/ContentInfo;

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 21
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 23
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->ᔋ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v1

    aput-object v1, v0, v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/asn1/BERSequence;

    iput-boolean v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apR:Z

    .line 27
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/pkcs/ContentInfo;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apR:Z

    .line 48
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 49
    return-void
.end method

.method public static ᔉ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
    .locals 2

    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 58
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 60
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    array-length v0, v0

    if-eq v2, v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apR:Z

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DLSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DLSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fC()[Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->apQ:[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method
