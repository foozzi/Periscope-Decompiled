.class public final Lcom/squareup/okhttp/internal/ws/WebSocketProtocol;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACCEPT_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field static final B0_FLAG_FIN:I = 0x80

.field static final B0_FLAG_RSV1:I = 0x40

.field static final B0_FLAG_RSV2:I = 0x20

.field static final B0_FLAG_RSV3:I = 0x10

.field static final B0_MASK_OPCODE:I = 0xf

.field static final B1_FLAG_MASK:I = 0x80

.field static final B1_MASK_LENGTH:I = 0x7f

.field static final OPCODE_BINARY:I = 0x2

.field static final OPCODE_CONTINUATION:I = 0x0

.field static final OPCODE_CONTROL_CLOSE:I = 0x8

.field static final OPCODE_CONTROL_PING:I = 0x9

.field static final OPCODE_CONTROL_PONG:I = 0xa

.field static final OPCODE_FLAG_CONTROL:I = 0x8

.field static final OPCODE_TEXT:I = 0x1

.field static final PAYLOAD_LONG:I = 0x7f

.field static final PAYLOAD_MAX:I = 0x7d

.field static final PAYLOAD_SHORT:I = 0x7e


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static toggleMask([BJ[BJ)V
    .locals 5

    .line 86
    array-length v2, p3

    .line 87
    const/4 v3, 0x0

    :goto_0
    int-to-long v0, v3

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 88
    int-to-long v0, v2

    rem-long v0, p4, v0

    long-to-int v4, v0

    .line 89
    aget-byte v0, p0, v3

    aget-byte v1, p3, v4

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    .line 87
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v0, 0x1

    add-long/2addr p4, v0

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method
