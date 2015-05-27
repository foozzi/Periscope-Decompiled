.class Lo/ᔃ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/qu$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oA:[B

.field final synthetic oB:[I

.field final synthetic oC:Lo/ᔂ;


# direct methods
.method constructor <init>(Lo/ᔂ;[B[I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lo/ᔃ;->oC:Lo/ᔂ;

    iput-object p2, p0, Lo/ᔃ;->oA:[B

    iput-object p3, p0, Lo/ᔃ;->oB:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/io/InputStream;I)V
    .locals 4

    .line 168
    :try_start_0
    iget-object v0, p0, Lo/ᔃ;->oA:[B

    iget-object v1, p0, Lo/ᔃ;->oB:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 169
    iget-object v0, p0, Lo/ᔃ;->oB:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p2

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 172
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v3

    .line 173
    :goto_0
    return-void
.end method
