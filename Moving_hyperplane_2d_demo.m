% Generates data for a moving hyperplane in 2d - demo
figure
for i = 1:5:360
    clf
    v = zeros(1,360); v(i) = 1; V = repmat(v,1000,1);
    [a,laba] = simulation_changing_environment('p_hyperplane2d',V);
    axis([-1.5 1.5 -1.5 1.5]), grid off, axis square, hold on
    set(gca,'Fontsize',14,'Box','on','FontName','Candara')    
    plot(a(laba==1,1),a(laba==1,2),'k.','markersize',40,'color','g')
    plot(a(laba==2,1),a(laba==2,2),'k.','markersize',18)
    drawnow
end

