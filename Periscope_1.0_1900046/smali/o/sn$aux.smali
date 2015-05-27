.class public Lo/sn$aux;
.super Ljava/io/BufferedOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "aux"
.end annotation


# instance fields
.field private final Yh:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1

    .line 721
    invoke-direct {p0, p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 723
    invoke-static {p2}, Lo/sn;->Ⅰ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lo/sn$aux;->Yh:Ljava/nio/charset/CharsetEncoder;

    .line 724
    return-void
.end method


# virtual methods
.method public ⅰ(Ljava/lang/String;)Lo/sn$aux;
    .locals 4

    .line 734
    iget-object v0, p0, Lo/sn$aux;->Yh:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 736
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 738
    return-object p0
.end method
