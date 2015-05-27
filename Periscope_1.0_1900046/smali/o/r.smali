.class Lo/r;
.super Lo/p$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ga:Lo/ay;

.field final synthetic Gb:Lo/p;


# direct methods
.method constructor <init>(Lo/p;Lo/ᒴ;Lo/ay;)V
    .locals 0

    iput-object p1, p0, Lo/r;->Gb:Lo/p;

    iput-object p3, p0, Lo/r;->Ga:Lo/ay;

    invoke-direct {p0, p2}, Lo/p$if;-><init>(Lo/ᒴ;)V

    return-void
.end method


# virtual methods
.method protected ˊ(Lo/x;)V
    .locals 1

    iget-object v0, p0, Lo/r;->Ga:Lo/ay;

    invoke-virtual {p1, v0}, Lo/x;->ˊ(Lo/ay;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Cu:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lo/r;->ˊ(Lo/ᒹ;)V

    return-void
.end method

.method protected synthetic ˋ(Lo/ᒰ$ˊ;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lo/x;

    invoke-virtual {p0, v0}, Lo/r;->ˊ(Lo/x;)V

    return-void
.end method
