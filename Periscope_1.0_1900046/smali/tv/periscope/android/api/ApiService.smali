.class public interface abstract Ltv/periscope/android/api/ApiService;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract accessChannel(Lo/vl;)Lo/vm;
    .param p1    # Lo/vl;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/accessChannel"
    .end annotation
.end method

.method public abstract block(Lo/vs;)Lo/vt;
    .param p1    # Lo/vs;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/block/add"
    .end annotation
.end method

.method public abstract broadcastSummary(Lo/vw;)Lo/vx;
    .param p1    # Lo/vw;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/broadcastSummary"
    .end annotation
.end method

.method public abstract deleteBroadcast(Lo/wa;)Lo/wb;
    .param p1    # Lo/wa;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/deleteBroadcast"
    .end annotation
.end method

.method public abstract deleteReplay(Lo/wc;)Lo/wd;
    .param p1    # Lo/wc;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/deleteReplay"
    .end annotation
.end method

.method public abstract endBroadcast(Ljava/lang/String;Ljava/lang/String;Lo/yf;)Lo/we;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "cookie"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "broadcast_id"
        .end annotation
    .end param
    .param p3    # Lo/yf;
        .annotation runtime Lretrofit/http/Part;
            value = "log"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/endBroadcast"
    .end annotation
.end method

.method public abstract endReplayViewed(Lo/wf;)Lo/wg;
    .param p1    # Lo/wf;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/endReplayViewed"
    .end annotation
.end method

.method public abstract featuredBroadcastFeed(Lo/wz;)Ljava/util/List;
    .param p1    # Lo/wz;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/wz;)Ljava/util/List<Lo/xh;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/featuredBroadcastFeed"
    .end annotation
.end method

.method public abstract follow(Lo/wk;)Lo/wl;
    .param p1    # Lo/wk;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/follow"
    .end annotation
.end method

.method public abstract followingBroadcastFeed(Lo/xa;)Ljava/util/List;
    .param p1    # Lo/xa;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/xa;)Ljava/util/List<Lo/xh;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/followingBroadcastFeed"
    .end annotation
.end method

.method public abstract getBlocked(Lo/xk;)Ljava/util/List;
    .param p1    # Lo/xk;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/xk;)Ljava/util/List<Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/block/users"
    .end annotation
.end method

.method public abstract getBroadcastIdForShareToken(Lo/vu;)Lo/vv;
    .param p1    # Lo/vu;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/getBroadcastIdForShareToken"
    .end annotation
.end method

.method public abstract getBroadcastShareUrl(Lo/wn;)Lo/wo;
    .param p1    # Lo/wn;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/getBroadcastShareURL"
    .end annotation
.end method

.method public abstract getBroadcastViewers(Lo/wp;)Lo/wq;
    .param p1    # Lo/wp;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/getBroadcastViewers"
    .end annotation
.end method

.method public abstract getBroadcasts(Lo/wm;)Ljava/util/List;
    .param p1    # Lo/wm;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/wm;)Ljava/util/List<Lo/xh;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/getBroadcasts"
    .end annotation
.end method

.method public abstract getFollowers(Lo/wr;)Ljava/util/List;
    .param p1    # Lo/wr;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/wr;)Ljava/util/List<Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/followers"
    .end annotation
.end method

.method public abstract getFollowing(Lo/ws;)Ljava/util/List;
    .param p1    # Lo/ws;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/ws;)Ljava/util/List<Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/following"
    .end annotation
.end method

.method public abstract getSettings(Lo/wt;)Lo/wu;
    .param p1    # Lo/wt;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/getSettings"
    .end annotation
.end method

.method public abstract getUser(Lo/wv;)Lo/ww;
    .param p1    # Lo/wv;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/user"
    .end annotation
.end method

.method public abstract globalBroadcastFeed(Lo/xb;)Ljava/util/List;
    .param p1    # Lo/xb;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/xb;)Ljava/util/List<Lo/xh;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/globalBroadcastFeed"
    .end annotation
.end method

.method public abstract liveBroadcastFeed(Lo/xc;)Ljava/util/List;
    .param p1    # Lo/xc;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/xc;)Ljava/util/List<Lo/xh;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/liveBroadcastFeed"
    .end annotation
.end method

.method public abstract login(Lo/wx;)Lo/wy;
    .param p1    # Lo/wx;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/login"
    .end annotation
.end method

.method public abstract login(Lo/yd;)Lo/ye;
    .param p1    # Lo/yd;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/loginTwitter"
    .end annotation
.end method

.method public abstract markAbuse(Lo/xd;)Lo/xe;
    .param p1    # Lo/xd;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/markAbuse"
    .end annotation
.end method

.method public abstract pingBroadcast(Ljava/lang/String;Ljava/lang/String;Lo/yf;)Lo/xf;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "cookie"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "broadcast_id"
        .end annotation
    .end param
    .param p3    # Lo/yf;
        .annotation runtime Lretrofit/http/Part;
            value = "log"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/pingBroadcast"
    .end annotation
.end method

.method public abstract pingWatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/yf;)Lo/xg;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "cookie"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "broadcast_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "session"
        .end annotation
    .end param
    .param p4    # Lo/yf;
        .annotation runtime Lretrofit/http/Part;
            value = "log"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/pingWatching"
    .end annotation
.end method

.method public abstract publishBroadcast(Lo/xp;)Lo/xq;
    .param p1    # Lo/xp;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/publishBroadcast"
    .end annotation
.end method

.method public abstract replayViewed(Lo/xr;)Lo/xs;
    .param p1    # Lo/xr;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/replayViewed"
    .end annotation
.end method

.method public abstract setSettings(Lo/xw;)Lo/xx;
    .param p1    # Lo/xw;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/setSettings"
    .end annotation
.end method

.method public abstract shareBroadcast(Lo/xy;)Lo/xz;
    .param p1    # Lo/xy;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/shareBroadcast"
    .end annotation
.end method

.method public abstract startBroadcast(Lo/vy;)Lo/vz;
    .param p1    # Lo/vy;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/createBroadcast"
    .end annotation
.end method

.method public abstract stopWatching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/yf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/ya;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "cookie"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "broadcast_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "session"
        .end annotation
    .end param
    .param p4    # Lo/yf;
        .annotation runtime Lretrofit/http/Part;
            value = "log"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "n_hearts"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "n_comments"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "duration"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/stopWatching"
    .end annotation
.end method

.method public abstract suggestedPeople(Lo/yb;)Lo/yc;
    .param p1    # Lo/yb;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/suggestedPeople"
    .end annotation
.end method

.method public abstract unblock(Lo/vs;)Lo/vt;
    .param p1    # Lo/vs;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/block/remove"
    .end annotation
.end method

.method public abstract unfollow(Lo/yg;)Lo/yh;
    .param p1    # Lo/yg;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/unfollow"
    .end annotation
.end method

.method public abstract userSearch(Lo/yj;)Ljava/util/List;
    .param p1    # Lo/yj;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/yj;)Ljava/util/List<Ltv/periscope/android/api/PsUser;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/userSearch"
    .end annotation
.end method

.method public abstract validateUsername(Lo/yl;)Lo/ym;
    .param p1    # Lo/yl;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/validateUsername"
    .end annotation
.end method

.method public abstract verifyUsername(Lo/yn;)Lo/yo;
    .param p1    # Lo/yn;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/verifyUsername"
    .end annotation
.end method
