.class public abstract Lo/sn$ˊ;
.super Lo/sn$ˏ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:Ljava/lang/Object;>Lo/sn$\u02cf<TV;>;"
    }
.end annotation


# instance fields
.field private final XX:Z

.field private final Yf:Ljava/io/Closeable;


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;Z)V
    .locals 0

    .line 662
    invoke-direct {p0}, Lo/sn$ˏ;-><init>()V

    .line 663
    iput-object p1, p0, Lo/sn$ˊ;->Yf:Ljava/io/Closeable;

    .line 664
    iput-boolean p2, p0, Lo/sn$ˊ;->XX:Z

    .line 665
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .line 669
    iget-object v0, p0, Lo/sn$ˊ;->Yf:Ljava/io/Closeable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lo/sn$ˊ;->Yf:Ljava/io/Closeable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 671
    :cond_0
    iget-boolean v0, p0, Lo/sn$ˊ;->XX:Z

    if-eqz v0, :cond_1

    .line 673
    :try_start_0
    iget-object v0, p0, Lo/sn$ˊ;->Yf:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    goto :goto_0

    .line 674
    :catch_0
    move-exception v1

    .line 676
    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lo/sn$ˊ;->Yf:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 679
    :goto_0
    return-void
.end method
