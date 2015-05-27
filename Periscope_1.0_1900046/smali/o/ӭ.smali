.class Lo/ӭ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Aj:I

.field final synthetic Ak:J

.field final synthetic Al:J

.field final synthetic Am:Lo/ӧ;


# direct methods
.method constructor <init>(Lo/ӧ;IJJ)V
    .locals 0

    .line 108
    iput-object p1, p0, Lo/ӭ;->Am:Lo/ӧ;

    iput p2, p0, Lo/ӭ;->Aj:I

    iput-wide p3, p0, Lo/ӭ;->Ak:J

    iput-wide p5, p0, Lo/ӭ;->Al:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 111
    iget-object v0, p0, Lo/ӭ;->Am:Lo/ӧ;

    invoke-static {v0}, Lo/ӧ;->ˊ(Lo/ӧ;)Lo/ʭ$if;

    move-result-object v0

    iget v1, p0, Lo/ӭ;->Aj:I

    iget-wide v2, p0, Lo/ӭ;->Ak:J

    iget-wide v4, p0, Lo/ӭ;->Al:J

    invoke-interface/range {v0 .. v5}, Lo/ʭ$if;->ˋ(IJJ)V

    .line 112
    return-void
.end method
