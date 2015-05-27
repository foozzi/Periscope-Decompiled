.class public Lo/ⁱ$ˋ;
.super Lo/ⁱ$con;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cb"
.end annotation


# instance fields
.field ᕐ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1667
    invoke-direct {p0}, Lo/ⁱ$con;-><init>()V

    .line 1668
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/CharSequence;)Lo/ⁱ$ˋ;
    .locals 1

    .line 1697
    invoke-static {p1}, Lo/ⁱ$ˎ;->ᐝ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/ⁱ$ˋ;->ᕐ:Ljava/lang/CharSequence;

    .line 1698
    return-object p0
.end method
