.class public Lo/ob;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/qu$ˋ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic RV:[Z

.field final synthetic RW:Ljava/io/ByteArrayOutputStream;

.field final synthetic RX:Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;[ZLjava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/ob;->RX:Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;

    iput-object p2, p0, Lo/ob;->RV:[Z

    iput-object p3, p0, Lo/ob;->RW:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/io/InputStream;I)V
    .locals 4

    .line 119
    new-array v3, p2, [B

    .line 120
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 122
    iget-object v0, p0, Lo/ob;->RV:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lo/ob;->RW:Ljava/io/ByteArrayOutputStream;

    # getter for: Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->RR:[B
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lo/ob;->RV:[Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 128
    :goto_0
    iget-object v0, p0, Lo/ob;->RW:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 129
    return-void
.end method
