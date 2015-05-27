.class public final Lo/ᴐ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᴐ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field private committed:Z

.field final synthetic fg:Lo/ᴐ;

.field private final fh:Lo/ᴐ$ˊ;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lo/ᴐ;Lo/ᴐ$ˊ;)V
    .locals 1

    .line 710
    iput-object p1, p0, Lo/ᴐ$if;->fg:Lo/ᴐ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lo/ᴐ$if;->fh:Lo/ᴐ$ˊ;

    .line 712
    invoke-static {p2}, Lo/ᴐ$ˊ;->ˏ(Lo/ᴐ$ˊ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lo/ᴐ;->ᐝ(Lo/ᴐ;)I

    move-result v0

    new-array v0, v0, [Z

    :goto_0
    iput-object v0, p0, Lo/ᴐ$if;->written:[Z

    .line 713
    return-void
.end method

.method synthetic constructor <init>(Lo/ᴐ;Lo/ᴐ$ˊ;Lo/ᴛ;)V
    .locals 0

    .line 705
    invoke-direct {p0, p1, p2}, Lo/ᴐ$if;-><init>(Lo/ᴐ;Lo/ᴐ$ˊ;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ᴐ$if;)Lo/ᴐ$ˊ;
    .locals 1

    .line 705
    iget-object v0, p0, Lo/ᴐ$if;->fh:Lo/ᴐ$ˊ;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ᴐ$if;)[Z
    .locals 1

    .line 705
    iget-object v0, p0, Lo/ᴐ$if;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 790
    iget-object v0, p0, Lo/ᴐ$if;->fg:Lo/ᴐ;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lo/ᴐ;->ˊ(Lo/ᴐ;Lo/ᴐ$if;Z)V

    .line 791
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 2

    .line 794
    iget-boolean v0, p0, Lo/ᴐ$if;->committed:Z

    if-nez v0, :cond_0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lo/ᴐ$if;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    goto :goto_0

    .line 797
    :catch_0
    move-exception v1

    .line 800
    :cond_0
    :goto_0
    return-void
.end method

.method public commit()V
    .locals 2

    .line 781
    iget-object v0, p0, Lo/ᴐ$if;->fg:Lo/ᴐ;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo/ᴐ;->ˊ(Lo/ᴐ;Lo/ᴐ$if;Z)V

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᴐ$if;->committed:Z

    .line 783
    return-void
.end method

.method public ﺑ(I)Ljava/io/File;
    .locals 5

    .line 745
    iget-object v2, p0, Lo/ᴐ$if;->fg:Lo/ᴐ;

    monitor-enter v2

    .line 746
    :try_start_0
    iget-object v0, p0, Lo/ᴐ$if;->fh:Lo/ᴐ$ˊ;

    invoke-static {v0}, Lo/ᴐ$ˊ;->ˊ(Lo/ᴐ$ˊ;)Lo/ᴐ$if;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 749
    :cond_0
    iget-object v0, p0, Lo/ᴐ$if;->fh:Lo/ᴐ$ˊ;

    invoke-static {v0}, Lo/ᴐ$ˊ;->ˏ(Lo/ᴐ$ˊ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lo/ᴐ$if;->written:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 752
    :cond_1
    iget-object v0, p0, Lo/ᴐ$if;->fh:Lo/ᴐ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᴐ$ˊ;->ʺ(I)Ljava/io/File;

    move-result-object v3

    .line 753
    iget-object v0, p0, Lo/ᴐ$if;->fg:Lo/ᴐ;

    invoke-static {v0}, Lo/ᴐ;->ʻ(Lo/ᴐ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 754
    iget-object v0, p0, Lo/ᴐ$if;->fg:Lo/ᴐ;

    invoke-static {v0}, Lo/ᴐ;->ʻ(Lo/ᴐ;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :cond_2
    monitor-exit v2

    return-object v3

    .line 757
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4
.end method
