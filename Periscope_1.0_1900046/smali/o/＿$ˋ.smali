.class Lo/＿$ˋ;
.super Lo/＿$ˎ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/＿;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02cb"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lo/＿$ˎ;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/＿;)Ljava/lang/Object;
    .locals 1

    .line 88
    new-instance v0, Lo/İ;

    invoke-direct {v0, p0, p1}, Lo/İ;-><init>(Lo/＿$ˋ;Lo/＿;)V

    invoke-static {v0}, Lo/ϊ;->ˊ(Lo/ϊ$if;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
