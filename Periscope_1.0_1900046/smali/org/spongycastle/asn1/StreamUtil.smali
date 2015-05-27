.class Lorg/spongycastle/asn1/StreamUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final abz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/spongycastle/asn1/StreamUtil;->abz:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ʾ(Ljava/io/InputStream;)I
    .locals 7

    .line 21
    instance-of v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/LimitedInputStream;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v0

    return v0

    .line 25
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;

    if-eqz v0, :cond_1

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->eE()I

    move-result v0

    return v0

    .line 29
    :cond_1
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_2

    .line 31
    move-object v0, p0

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    .line 33
    :cond_2
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_5

    .line 37
    move-object v0, p0

    :try_start_0
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 38
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    goto :goto_0

    :cond_3
    const-wide/32 v5, 0x7fffffff

    .line 40
    :goto_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v5, v0

    if-gez v0, :cond_4

    .line 42
    long-to-int v0, v5

    return v0

    .line 48
    :cond_4
    goto :goto_1

    .line 45
    :catch_0
    move-exception v4

    .line 51
    :cond_5
    :goto_1
    sget-wide v0, Lorg/spongycastle/asn1/StreamUtil;->abz:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 53
    const v0, 0x7fffffff

    return v0

    .line 56
    :cond_6
    sget-wide v0, Lorg/spongycastle/asn1/StreamUtil;->abz:J

    long-to-int v0, v0

    return v0
.end method

.method static х(I)I
    .locals 6

    .line 62
    const/4 v2, 0x1

    .line 64
    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    .line 66
    const/4 v3, 0x1

    .line 67
    move v4, p0

    .line 69
    :goto_0
    ushr-int/lit8 v0, v4, 0x8

    move v4, v0

    if-eqz v0, :cond_0

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    add-int/lit8 v0, v3, -0x1

    mul-int/lit8 v5, v0, 0x8

    :goto_1
    if-ltz v5, :cond_1

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 74
    add-int/lit8 v5, v5, -0x8

    goto :goto_1

    .line 80
    :cond_1
    return v2
.end method

.method static ј(I)I
    .locals 5

    .line 86
    const/4 v2, 0x1

    .line 88
    const/16 v0, 0x1f

    if-lt p0, v0, :cond_2

    .line 90
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [B

    .line 97
    array-length v4, v3

    .line 99
    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v0, p0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 103
    :cond_1
    shr-int/lit8 p0, p0, 0x7

    .line 104
    add-int/lit8 v4, v4, -0x1

    and-int/lit8 v0, p0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    .line 106
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1

    .line 108
    array-length v0, v3

    sub-int/2addr v0, v4

    add-int/lit8 v2, v0, 0x1

    .line 112
    :cond_2
    :goto_0
    return v2
.end method
