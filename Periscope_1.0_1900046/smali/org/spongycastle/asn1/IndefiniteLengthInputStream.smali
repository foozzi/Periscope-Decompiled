.class Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
.super Lorg/spongycastle/asn1/LimitedInputStream;
.source ""


# instance fields
.field private abr:I

.field private abs:I

.field private abt:Z

.field private abu:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abt:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abu:Z

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abr:I

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    .line 25
    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    if-gez v0, :cond_0

    .line 28
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 31
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->fl()Z

    .line 32
    return-void
.end method

.method private fl()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abt:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abu:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abr:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abt:Z

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->ᵄ(Z)V

    .line 48
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abt:Z

    return v0
.end method


# virtual methods
.method public read()I
    .locals 3

    .line 91
    invoke-direct {p0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->fl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, -0x1

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->aaA:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 98
    if-gez v1, :cond_1

    .line 101
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 104
    :cond_1
    iget v2, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abr:I

    .line 106
    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    iput v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abr:I

    .line 107
    iput v1, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    .line 109
    return v2
.end method

.method public read([BII)I
    .locals 4

    .line 55
    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abu:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    .line 57
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/spongycastle/asn1/LimitedInputStream;->read([BII)I

    move-result v0

    return v0

    .line 60
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abt:Z

    if-eqz v0, :cond_2

    .line 62
    const/4 v0, -0x1

    return v0

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->aaA:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 67
    if-gez v3, :cond_3

    .line 70
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 73
    :cond_3
    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abr:I

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 74
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->aaA:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abr:I

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->aaA:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    .line 79
    iget v0, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abs:I

    if-gez v0, :cond_4

    .line 82
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 85
    :cond_4
    add-int/lit8 v0, v3, 0x2

    return v0
.end method

.method ᘁ(Z)V
    .locals 1

    .line 37
    iput-boolean p1, p0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->abu:Z

    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->fl()Z

    .line 39
    return-void
.end method
