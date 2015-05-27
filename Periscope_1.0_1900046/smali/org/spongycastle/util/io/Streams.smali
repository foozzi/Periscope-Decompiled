.class public final Lorg/spongycastle/util/io/Streams;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/16 v0, 0x200

    sput v0, Lorg/spongycastle/util/io/Streams;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Ljava/io/InputStream;[BII)I
    .locals 4

    .line 89
    const/4 v2, 0x0

    .line 90
    :goto_0
    if-ge v2, p3, :cond_1

    .line 92
    add-int v0, p2, v2

    sub-int v1, p3, v2

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 93
    if-gez v3, :cond_0

    .line 95
    goto :goto_1

    .line 97
    :cond_0
    add-int/2addr v2, v3

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    return v2
.end method

.method public static ˎ(Ljava/io/InputStream;[B)I
    .locals 2

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/spongycastle/util/io/Streams;->ˊ(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static ˎ(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 112
    sget v0, Lorg/spongycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v2, v0, [B

    .line 114
    :goto_0
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v3, v0

    if-ltz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public static ۥ(Ljava/io/InputStream;)[B
    .locals 2

    .line 40
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    invoke-static {p0, v1}, Lorg/spongycastle/util/io/Streams;->ˎ(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
