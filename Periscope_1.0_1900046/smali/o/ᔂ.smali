.class Lo/ᔂ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final dV:Landroid/content/Context;

.field private final og:Ljava/io/File;

.field private oz:Lo/qu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ᔂ;-><init>(Landroid/content/Context;Ljava/io/File;Lo/qu;)V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Lo/qu;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/ᔂ;->dV:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lo/ᔂ;->og:Ljava/io/File;

    .line 36
    iput-object p3, p0, Lo/ᔂ;->oz:Lo/qu;

    .line 37
    return-void
.end method


# virtual methods
.method ᓗ()Lo/ŧ;
    .locals 6

    .line 152
    iget-object v0, p0, Lo/ᔂ;->oz:Lo/qu;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 161
    iget-object v0, p0, Lo/ᔂ;->oz:Lo/qu;

    invoke-virtual {v0}, Lo/qu;->cJ()I

    move-result v0

    new-array v4, v0, [B

    .line 164
    :try_start_0
    iget-object v0, p0, Lo/ᔂ;->oz:Lo/qu;

    new-instance v1, Lo/ᔃ;

    invoke-direct {v1, p0, v4, v3}, Lo/ᔃ;-><init>(Lo/ᔂ;[B[I)V

    invoke-virtual {v0, v1}, Lo/qu;->ˊ(Lo/qu$ˋ;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 175
    :catch_0
    move-exception v5

    .line 176
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v0, v1, v2, v5}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :goto_0
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x0

    invoke-static {v4, v1, v0}, Lo/ŧ;->ˋ([BII)Lo/ŧ;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
    .end array-data
.end method

.method ᓚ()V
    .locals 2

    .line 184
    iget-object v0, p0, Lo/ᔂ;->oz:Lo/qu;

    const-string v1, "There was a problem closing the Crashlytics log file."

    invoke-static {v0, v1}, Lo/qh;->ˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᔂ;->oz:Lo/qu;

    .line 186
    return-void
.end method
