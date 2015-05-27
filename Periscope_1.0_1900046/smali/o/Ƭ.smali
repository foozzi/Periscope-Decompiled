.class Lo/Ƭ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final nr:Ljava/util/concurrent/atomic/AtomicLong;

.field private static ns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lo/Ƭ;->nr:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lo/qr;)V
    .locals 8

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xa

    new-array v5, v0, [B

    .line 34
    invoke-direct {p0, v5}, Lo/Ƭ;->ʻ([B)V

    .line 35
    invoke-direct {p0, v5}, Lo/Ƭ;->ʼ([B)V

    .line 36
    invoke-direct {p0, v5}, Lo/Ƭ;->ʽ([B)V

    .line 41
    invoke-virtual {p1}, Lo/qr;->cA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/qh;->І(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v5}, Lo/qh;->ˌ([B)Ljava/lang/String;

    move-result-object v7

    .line 44
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s-%s-%s-%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0xc

    const/16 v4, 0x10

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0x10

    const/16 v4, 0x14

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/Ƭ;->ns:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private ʻ([B)V
    .locals 11

    .line 50
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 51
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 52
    const-wide/16 v0, 0x3e8

    div-long v5, v3, v0

    .line 53
    const-wide/16 v0, 0x3e8

    rem-long v7, v3, v0

    .line 54
    invoke-static {v5, v6}, Lo/Ƭ;->ʻ(J)[B

    move-result-object v9

    .line 55
    const/4 v0, 0x0

    aget-byte v0, v9, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    .line 56
    const/4 v0, 0x1

    aget-byte v0, v9, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    .line 57
    const/4 v0, 0x2

    aget-byte v0, v9, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    .line 58
    const/4 v0, 0x3

    aget-byte v0, v9, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    .line 60
    invoke-static {v7, v8}, Lo/Ƭ;->ʼ(J)[B

    move-result-object v10

    .line 61
    const/4 v0, 0x0

    aget-byte v0, v10, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    .line 62
    const/4 v0, 0x1

    aget-byte v0, v10, v0

    const/4 v1, 0x5

    aput-byte v0, p1, v1

    .line 63
    return-void
.end method

.method private static ʻ(J)[B
    .locals 2

    .line 79
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    long-to-int v0, p0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private ʼ([B)V
    .locals 3

    .line 66
    sget-object v0, Lo/Ƭ;->nr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/Ƭ;->ʼ(J)[B

    move-result-object v2

    .line 67
    const/4 v0, 0x0

    aget-byte v0, v2, v0

    const/4 v1, 0x6

    aput-byte v0, p1, v1

    .line 68
    const/4 v0, 0x1

    aget-byte v0, v2, v0

    const/4 v1, 0x7

    aput-byte v0, p1, v1

    .line 69
    return-void
.end method

.method private static ʼ(J)[B
    .locals 2

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 89
    long-to-int v0, p0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 90
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 91
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private ʽ([B)V
    .locals 4

    .line 72
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lo/Ƭ;->ʼ(J)[B

    move-result-object v3

    .line 74
    const/4 v0, 0x0

    aget-byte v0, v3, v0

    const/16 v1, 0x8

    aput-byte v0, p1, v1

    .line 75
    const/4 v0, 0x1

    aget-byte v0, v3, v0

    const/16 v1, 0x9

    aput-byte v0, p1, v1

    .line 76
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lo/Ƭ;->ns:Ljava/lang/String;

    return-object v0
.end method
