.class public interface abstract Lo/sn$ˋ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "\u02cb"
.end annotation


# static fields
.field public static final Yg:Lo/sn$ˋ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 350
    new-instance v0, Lo/sp;

    invoke-direct {v0}, Lo/sp;-><init>()V

    sput-object v0, Lo/sn$ˋ;->Yg:Lo/sn$ˋ;

    return-void
.end method


# virtual methods
.method public abstract ˊ(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
.end method

.method public abstract ˋ(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.end method
