.class public Lorg/spongycastle/asn1/ua/DSTU4145Params;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static final avW:[B


# instance fields
.field private avX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private avY:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

.field private avZ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avW:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avW:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avZ:[B

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avW:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avZ:[B

    .line 37
    iput-object p1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avY:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    .line 38
    return-void
.end method

.method public static gD()[B
    .locals 1

    .line 57
    sget-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avW:[B

    return-object v0
.end method

.method public static ײ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145Params;
    .locals 4

    .line 67
    instance-of v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    return-object v0

    .line 72
    :cond_0
    if-eqz p0, :cond_3

    .line 74
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 77
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_1

    .line 79
    new-instance v3, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v3, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->Ӏ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/spongycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;)V

    .line 86
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 88
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    iput-object v0, v3, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avZ:[B

    .line 89
    iget-object v0, v3, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avZ:[B

    array-length v0, v0

    sget-object v1, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avW:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object parse error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    return-object v3

    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object parse error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 103
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avY:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avZ:[B

    sget-object v1, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avW:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avZ:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public gA()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public gB()Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avY:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    return-object v0
.end method

.method public gC()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avZ:[B

    return-object v0
.end method

.method public gE()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->avX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
