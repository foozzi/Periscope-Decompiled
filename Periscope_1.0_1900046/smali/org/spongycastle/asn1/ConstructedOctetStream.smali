.class Lorg/spongycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private final aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

.field private aaW:Z

.field private aaX:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaW:Z

    .line 17
    iput-object p1, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 18
    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 75
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaW:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, -0x1

    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->eU()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    move-object v1, v0

    .line 82
    if-nez v1, :cond_1

    .line 84
    const/4 v0, -0x1

    return v0

    .line 87
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaW:Z

    .line 88
    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->eL()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    .line 93
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 95
    if-ltz v1, :cond_3

    .line 97
    return v1

    .line 100
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->eU()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    move-object v2, v0

    .line 102
    if-nez v2, :cond_4

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    .line 105
    const/4 v0, -0x1

    return v0

    .line 108
    :cond_4
    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->eL()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    .line 109
    goto :goto_0
.end method

.method public read([BII)I
    .locals 6

    .line 22
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 24
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaW:Z

    if-nez v0, :cond_0

    .line 26
    const/4 v0, -0x1

    return v0

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->eU()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    move-object v3, v0

    .line 31
    if-nez v3, :cond_1

    .line 33
    const/4 v0, -0x1

    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaW:Z

    .line 37
    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->eL()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    .line 40
    :cond_2
    const/4 v3, 0x0

    .line 44
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    add-int v1, p2, v3

    sub-int v2, p3, v3

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 46
    if-ltz v4, :cond_3

    .line 48
    add-int/2addr v3, v4

    .line 50
    if-ne v3, p3, :cond_6

    .line 52
    return v3

    .line 57
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1StreamParser;->eU()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    move-object v5, v0

    .line 59
    if-nez v5, :cond_5

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    .line 62
    const/4 v0, 0x1

    if-ge v3, v0, :cond_4

    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    return v0

    .line 65
    :cond_5
    invoke-interface {v5}, Lorg/spongycastle/asn1/ASN1OctetStringParser;->eL()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ConstructedOctetStream;->aaX:Ljava/io/InputStream;

    .line 67
    :cond_6
    goto :goto_0
.end method
