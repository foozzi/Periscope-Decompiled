.class final enum Lo/ff;
.super Lo/fe;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/fe;-><init>(Ljava/lang/String;ILo/ff;)V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 38
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
