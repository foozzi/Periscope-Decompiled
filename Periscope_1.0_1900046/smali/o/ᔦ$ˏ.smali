.class final Lo/ᔦ$ˏ;
.super Lo/ᔦ$ʻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᔦ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02cf"
.end annotation


# instance fields
.field private final oN:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lo/ᔦ$if;Lo/ᔦ$ˎ;)V
    .locals 2

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [Lo/ᔦ$ʻ;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 v1, 0x1

    aput-object p5, v0, v1

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lo/ᔦ$ʻ;-><init>(I[Lo/ᔦ$ʻ;)V

    .line 156
    iput-wide p1, p0, Lo/ᔦ$ˏ;->time:J

    .line 157
    iput-object p3, p0, Lo/ᔦ$ˏ;->oN:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public ˊ(Lo/ɤ;)V
    .locals 3

    .line 170
    iget-wide v0, p0, Lo/ᔦ$ˏ;->time:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 171
    iget-object v0, p0, Lo/ᔦ$ˏ;->oN:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 172
    return-void
.end method

.method public ᓻ()I
    .locals 5

    .line 162
    iget-wide v0, p0, Lo/ᔦ$ˏ;->time:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v3

    .line 163
    iget-object v0, p0, Lo/ᔦ$ˏ;->oN:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v4

    .line 165
    add-int v0, v3, v4

    return v0
.end method
