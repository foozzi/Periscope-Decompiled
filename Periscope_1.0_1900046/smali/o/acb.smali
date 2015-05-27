.class public Lo/acb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final bxq:Lo/anu;

.field public final bxr:Lo/ant;

.field public final bxs:J

.field private bxt:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/fw;J)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p3, p0, Lo/acb;->bxs:J

    .line 17
    invoke-virtual {p2}, Lo/fw;->r()Lo/fz;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ant;->ˎ(Ljava/lang/String;Lo/fz;)Lo/ant;

    move-result-object v0

    iput-object v0, p0, Lo/acb;->bxr:Lo/ant;

    .line 18
    iget-object v0, p0, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iput-object v0, p0, Lo/acb;->bxq:Lo/anu;

    .line 19
    return-void
.end method

.method public constructor <init>(Lo/ant;J)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p2, p0, Lo/acb;->bxs:J

    .line 23
    iput-object p1, p0, Lo/acb;->bxr:Lo/ant;

    .line 24
    iget-object v0, p0, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    iput-object v0, p0, Lo/acb;->bxq:Lo/anu;

    .line 25
    return-void
.end method


# virtual methods
.method public wG()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lo/acb;->bxt:J

    return-wide v0
.end method

.method public ˀ(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lo/acb;->bxt:J

    .line 33
    return-void
.end method
