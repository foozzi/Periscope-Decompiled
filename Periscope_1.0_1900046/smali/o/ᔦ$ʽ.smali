.class final Lo/ᔦ$ʽ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02bd"
.end annotation


# instance fields
.field private final oU:Ljava/lang/String;

.field private final oV:Ljava/lang/String;

.field private final oW:J


# direct methods
.method public constructor <init>(Lo/ť;)V
    .locals 2

    .line 327
    const/4 v0, 0x0

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 328
    iget-object v0, p1, Lo/ť;->name:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ʽ;->oU:Ljava/lang/String;

    .line 329
    iget-object v0, p1, Lo/ť;->qx:Ljava/lang/String;

    iput-object v0, p0, Lo/ᔦ$ʽ;->oV:Ljava/lang/String;

    .line 330
    iget-wide v0, p1, Lo/ť;->qy:J

    iput-wide v0, p0, Lo/ᔦ$ʽ;->oW:J

    .line 331
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ɤ;)V
    .locals 3

    .line 343
    iget-object v0, p0, Lo/ᔦ$ʽ;->oU:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 344
    iget-object v0, p0, Lo/ᔦ$ʽ;->oV:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 345
    iget-wide v0, p0, Lo/ᔦ$ʽ;->oW:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 346
    return-void
.end method

.method public ᓻ()I
    .locals 4

    .line 335
    iget-object v0, p0, Lo/ᔦ$ʽ;->oU:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v3

    .line 336
    iget-object v0, p0, Lo/ᔦ$ʽ;->oV:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 337
    iget-wide v0, p0, Lo/ᔦ$ʽ;->oW:J

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 338
    return v3
.end method
